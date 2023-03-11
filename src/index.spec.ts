import { main } from './';

describe('index', () => {
    it('returns zero', () => {
        const result = main();
        const expected = 0;
        expect(result).toStrictEqual(expected);
    });
});
